package com.library.govLibrary.repository;

import com.library.govLibrary.model.Questionnaire;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionnaireRepository extends JpaRepository<Questionnaire, Long> {
    @Query("SELECT q FROM Questionnaire q")
    List<Questionnaire> findAllQuestionnaire(Pageable page);
}

package com.example.socialnetwork.repo;

import com.example.socialnetwork.domain.Message;
import org.springframework.data.repository.CrudRepository;

public interface MessageRepository extends CrudRepository<Message, Long> {
}

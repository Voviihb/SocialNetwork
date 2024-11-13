package com.example.socialnetwork.repos;

import com.example.socialnetwork.domain.Message;
import org.springframework.data.repository.CrudRepository;

public interface MessageRepo extends CrudRepository<Message, Long> {
}

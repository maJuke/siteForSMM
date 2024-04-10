package com.karelin.siteSmm.modules;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
@Entity
@Table(name = "pics_for_reviews")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pic_id")
    private Long id;
    @Lob
    @Column(name = "pic_blob")
    private byte[] longblob;
    @Column(name = "pic_date")
    private Date date;
    @Column(name = "pic_descr", columnDefinition = "text")
    private String description;
    @Column(name = "pic_type")
    private String contentType;
    @Column(name = "pic_size")
    private Long size;
}

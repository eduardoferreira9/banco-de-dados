CREATE TABLE Sala (
    id_sala SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Reserva (
    id_reserva SERIAL PRIMARY KEY,
    id_sala INT NOT NULL,
    data_reserva DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fim TIME NOT NULL,
    CONSTRAINT fk_sala FOREIGN KEY (id_sala)
        REFERENCES Sala(id_sala)
        ON DELETE RESTRICT,
    CONSTRAINT chk_hora CHECK (hora_inicio < hora_fim),
    CONSTRAINT chk_data CHECK (data_reserva >= CURRENT_DATE)
);


-- Adicionando registros-- Inserir sala
INSERT INTO Sala (nome) VALUES ('Sala Reunião 1');

-- Inserir reserva
INSERT INTO Reserva (id_sala, data_reserva, hora_inicio, hora_fim)
VALUES (1, CURRENT_DATE, '10:00', '11:00');

-- Tentativa de exclusão da sala
DELETE FROM Sala WHERE id_sala = 1;

-- Isso vai falhar por causa do CHECK constraint
INSERT INTO Reserva (id_sala, data_reserva, hora_inicio, hora_fim)
VALUES (1, CURRENT_DATE, '15:00', '14:00');

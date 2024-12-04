CREATE TABLE IF NOT EXISTS circuit (
    circuit_id INT PRIMARY KEY,
    -- circuit_ref omitted
    name TEXT,
    location TEXT,
    country TEXT,
    lat float,
    long float,
    alt INT,
    url TEXT
);

CREATE TABLE IF NOT EXISTS constructor_result (
    constructor_results_id INT PRIMARY KEY,
    race_id INT REFERENCES race,
    constructor_id INT REFERENCES constructor,
    points INT 
);

CREATE TABLE IF NOT EXISTS constructor_standing (
    constructor_standings_id INT PRIMARY KEY,
    race_id INT REFERENCES race,
    constructor_id INT REFERENCES constructor,
    points INT,
    position INT,
    -- removing positiontext reference for normalisation purposes
    wins INT
);

CREATE TABLE IF NOT EXISTS constructor (
    constructor_id INT PRIMARY KEY,
    -- removing constructor_ref for normalisation purposes
    name TEXT,
    nationality TEXT,
    url TEXT
);

CREATE TABLE IF NOT EXISTS driver_standing (
    driver_standings_id INT PRIMARY KEY,
    race_id INT REFERENCES race,
    driver_id INT REFERENCES driver,
    points INT,
    position INT,
    wins INT
);

CREATE TABLE IF NOT EXISTS driver (
    driver_id INT PRIMARY KEY,
    -- removing driver_ref and number for normalisation purposes
    code TEXT,
    first_name TEXT, --no longer forename
    last_name TEXT, --no longer surname
    dob DATE,
    nationality TEXT,
    url TEXT
);

CREATE TABLE IF NOT EXISTS lap_time (
    race_id INT PRIMARY KEY,
    driver_id INT REFERENCES driver,
    lap INT,
    position INT,
    time_in_miliseconds INT

);

CREATE TABLE IF NOT EXISTS pit_stop (
    race_id INT,
    driver_id INT,
    PRIMARY KEY (race_id, driver_id),
    stop INT,
    lap INT,
    time_in_miliseconds INT
);

CREATE TABLE IF NOT EXISTS race (
    race_id INT PRIMARY KEY,
    year INT,
    round INT,
    circuit_id INT REFERENCES circuit,
    name TEXT,
    date DATE,
    url TEXT
);

CREATE TABLE IF NOT EXISTS result_id (
    result_id INT PRIMARY KEY,
    race_id INT REFERENCES race,
    driver_id INT REFERENCES driver,
    constructor_id INT REFERENCES constructor,
    -- number and grid omitted
    position INT, -- use positionOrder instead of position/positionText
    points INT,
    laps INT,
    -- omit time, unclean
    time_in_miliseconds INT,
    fastestLap INT,
    rank INT,
    fastest_lap_time INT,
    fastest_lap_speed float
);

CREATE TABLE IF NOT EXISTS season (
    year INT PRIMARY KEY,
    url TEXT
);

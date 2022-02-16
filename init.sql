
CREATE TABLE IF NOT EXISTS _metaVersion (
	currentVersion VARCHAR(8) NOT NULL PRIMARY KEY,
	isLocked BOOLEAN NOT NULL DEFAULT FALSE
);

INSERT INTO _metaVersion (currentVersion) VALUES ('0');

CREATE TABLE IF NOT EXISTS _metaChange (
	metaChangeId SERIAL PRIMARY KEY,
	name VARCHAR(128) NOT NULL,
	dateApplied TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	UNIQUE(name)
);

INSERT INTO _metaChange (name) VALUES ('_metaVersion.isLocked');
INSERT INTO _metaChange (name) VALUES ('_metaChange.nameLength');


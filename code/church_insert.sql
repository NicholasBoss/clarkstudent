USE church;

INSERT INTO unit_type
(unit_type_name)
VALUES
('Stake'),
('Ward');

INSERT INTO unit
( unit_name
, unit_type_id
, parent_unit_id)
VALUES
( 'Rexburg 67th'
,  1
,  NULL),
( 'Rexburg 1st'
, 2
, 1),
( 'Tiajuana 3rd'
, 2
, 1);

INSERT INTO member
( first_name
, last_name
, dob
, unit_id)
VALUES
( 'Jared'
, 'MacWilliams'
, '1990-01-01'
, 2),
( 'Doris'
, 'Garcia'
, '1990-03-24'
, 3);

INSERT INTO mission
(mission_name)
VALUES
('USA Georgia Macon'),
('Mexico Monterey');

INSERT INTO member_mission
( member_id
, mission_id
, start_date
, end_date)
VALUES
( 1
, 1
, '2009-06-23'
, '2011-06-28' ),
( 2
, 2
, '2011-08-11'
, '2013-08-10' );

INSERT INTO position
( position_name )
VALUES
('1st Counselor'),
('Teacher');

INSERT INTO organization
(organization_name)
VALUES
('Elders Quorum'),
('Primary');

INSERT INTO unit_organization
( unit_id
, organization_id)
VALUES
( 1
, 1 ),
( 2
, 2 );

INSERT INTO calling
( organization_id
, position_id
, member_id )
VALUES
( 1
, 1
, 1 ),
( 2
, 2
, 2 );

INSERT INTO ordinance
(ordinance_name)
VALUES
('Baby Blessing'),
('Baptism'),
('Aaronic Priesthood Ordination'),
('Melchizedek Prieshood Ordination'),
('Endowment'),
('Marriage'),
('Sealing');

INSERT INTO member_ordinance
( member_id
, ordinance_id
, ordinance_date )
VALUES
( 1
, 1
, '1990-01-26' ),
( 1
, 2
, '1998-01-04' ),
( 1
, 3
, '2002-01-06' ),
( 1
, 4
, '2009-04-08' ),
( 1
, 5
, '2009-05-22' ),
( 1
, 6
, '2013-09-12' ),
( 1
, 7
, '2013-09-12' ),
( 2
, 2
, '2006-07-15' ),
( 2
, 5
, '2011-07-24' ),
( 2
, 6
, '2017-04-04' ),
( 2
, 7
, '2017-04-04' );

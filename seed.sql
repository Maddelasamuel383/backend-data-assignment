-- Insert sample products
INSERT INTO products (name, category, short_desc, long_desc, price, image_url) VALUES
('Hydraulic Pump', 'Machinery', 'High-pressure hydraulic pump', 'A durable hydraulic pump suitable for industrial applications.', 4500.00, '/images/pump1.jpg'),
('Electric Motor', 'Electronics', '3-phase industrial motor', 'Energy-efficient electric motor with high torque performance.', 3200.00, '/images/motor1.jpg'),
('Gearbox Assembly', 'Mechanical', 'Precision gearbox', 'Heavy-duty gearbox for machinery systems requiring high reliability.', 7200.00, '/images/gearbox.jpg'),
('Steel Pipe 6-inch', 'Construction', 'High-grade steel pipe', 'Corrosion-resistant 6-inch steel pipe used in heavy construction.', 900.50, '/images/pipe6.jpg'),
('Welding Machine', 'Tools', 'Portable welding unit', 'Compact welding machine suitable for workshop and on-site repair jobs.', 2500.00, '/images/welder.jpg'),
('Industrial Fan', 'Cooling Systems', 'Large exhaust fan', 'High-airflow industrial exhaust fan for warehouses and factories.', 1800.00, '/images/fan.jpg'),
('Air Compressor', 'Machinery', 'Heavy-duty compressor', 'High-capacity air compressor suitable for multiple pneumatic tools.', 5600.00, '/images/compressor.jpg'),
('Generator 10kW', 'Power', 'Portable generator', 'Reliable 10kW power generator ideal for backup and field operations.', 8400.00, '/images/generator.jpg'),
('Safety Helmet', 'Safety Equipment', 'Industrial helmet', 'High-impact resistant helmet for construction and factory workers.', 150.00, '/images/helmet.jpg'),
('LED Flood Light', 'Lighting', 'High-brightness outdoor light', 'Waterproof LED floodlight ideal for large outdoor areas.', 650.00, '/images/floodlight.jpg'),
('Control Panel', 'Electronics', 'Digital control panel', 'Programmable control panel for automation systems.', 4300.00, '/images/controlpanel.jpg'),
('Bearing Set', 'Mechanical', 'High-precision bearings', 'Durable bearing set designed for heavy rotational machinery.', 1100.00, '/images/bearings.jpg'),
('Cooling Tower', 'Cooling Systems', 'Compact cooling tower', 'Efficient cooling tower for industrial temperature regulation.', 15000.00, '/images/coolingtower.jpg'),
('Solar Inverter', 'Power', 'High-efficiency inverter', 'Smart solar inverter with automatic power optimization.', 9800.00, '/images/inverter.jpg'),
('CNC Cutting Machine', 'Machinery', 'Precision CNC cutter', 'High-speed CNC cutting machine for metal fabrication operations.', 45000.00, '/images/cnc.jpg');

-- Insert sample enquiries
INSERT INTO enquiries (product_id, name, email, phone, message) VALUES
(1, 'John Doe', 'john@example.com', '9876543210', 'I want more details about the hydraulic pump.'),
(5, 'Ravi Kumar', 'ravi@example.com', '9988776655', 'Please send the welding machine price list.'),
(10, 'Sarah Lee', 'sarah@example.com', '9876001234', 'Is the LED floodlight suitable for outdoor stadiums?');
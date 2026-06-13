-- ============================================
-- Axion v1 - Alerts Table
-- ============================================

CREATE TABLE alerts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    device_id VARCHAR(50) NOT NULL,

    severity VARCHAR(20) NOT NULL,

    message TEXT NOT NULL,

    timestamp TIMESTAMP NOT NULL,

    acknowledged BOOLEAN DEFAULT FALSE,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Indexes for alert queries
CREATE INDEX idx_alerts_device_id
ON alerts(device_id);

CREATE INDEX idx_alerts_acknowledged
ON alerts(acknowledged);

CREATE INDEX idx_alerts_timestamp
ON alerts(timestamp DESC);

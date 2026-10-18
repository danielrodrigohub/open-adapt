package com.newrelic.agent.android.metric;

import a0.b;
import a1.d;
import com.newrelic.agent.android.harvest.type.HarvestableObject;
import com.newrelic.com.google.gson.JsonElement;
import com.newrelic.com.google.gson.JsonObject;
import com.newrelic.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes.dex */
public class Metric extends HarvestableObject {
    private long count;
    private Double exclusive;
    private Double max;
    private Double min;
    private String name;
    private String scope;
    private Double sumOfSquares;
    private Double total;

    public Metric(String str) {
        this(str, null);
    }

    public void addExclusive(double d10) {
        Double d11 = this.exclusive;
        if (d11 == null) {
            this.exclusive = Double.valueOf(d10);
        } else {
            this.exclusive = Double.valueOf(d11.doubleValue() + d10);
        }
    }

    public void aggregate(Metric metric) {
        if (metric == null) {
            return;
        }
        increment(metric.getCount());
        if (metric.isCountOnly()) {
            return;
        }
        Double d10 = this.total;
        this.total = Double.valueOf(d10 == null ? metric.getTotal() : d10.doubleValue() + metric.getTotal());
        Double d11 = this.sumOfSquares;
        this.sumOfSquares = Double.valueOf(d11 == null ? metric.getSumOfSquares() : d11.doubleValue() + metric.getSumOfSquares());
        Double d12 = this.exclusive;
        this.exclusive = Double.valueOf(d12 == null ? metric.getExclusive() : d12.doubleValue() + metric.getExclusive());
        setMin(Double.valueOf(metric.getMin()));
        setMax(Double.valueOf(metric.getMax()));
    }

    @Override // com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonElement asJson() {
        return isCountOnly() ? new JsonPrimitive((Number) Long.valueOf(this.count)) : asJsonObject();
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableObject, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("count", new JsonPrimitive((Number) Long.valueOf(this.count)));
        if (this.total != null) {
            jsonObject.add("total", new JsonPrimitive((Number) this.total));
        }
        if (this.min != null) {
            jsonObject.add("min", new JsonPrimitive((Number) this.min));
        }
        if (this.max != null) {
            jsonObject.add("max", new JsonPrimitive((Number) this.max));
        }
        if (this.sumOfSquares != null) {
            jsonObject.add("sum_of_squares", new JsonPrimitive((Number) this.sumOfSquares));
        }
        if (this.exclusive != null) {
            jsonObject.add("exclusive", new JsonPrimitive((Number) this.exclusive));
        }
        return jsonObject;
    }

    public void clear() {
        this.min = null;
        this.max = null;
        this.total = null;
        this.sumOfSquares = null;
        this.exclusive = null;
        this.count = 0L;
    }

    public long getCount() {
        return this.count;
    }

    public double getExclusive() {
        Double d10 = this.exclusive;
        if (d10 == null) {
            return 0.0d;
        }
        return d10.doubleValue();
    }

    public double getMax() {
        Double d10 = this.max;
        if (d10 == null) {
            return 0.0d;
        }
        return d10.doubleValue();
    }

    public double getMin() {
        Double d10 = this.min;
        if (d10 == null) {
            return 0.0d;
        }
        return d10.doubleValue();
    }

    public String getName() {
        return this.name;
    }

    public String getScope() {
        return this.scope;
    }

    public String getStringScope() {
        String str = this.scope;
        return str == null ? "" : str;
    }

    public double getSumOfSquares() {
        Double d10 = this.sumOfSquares;
        if (d10 == null) {
            return 0.0d;
        }
        return d10.doubleValue();
    }

    public double getTotal() {
        Double d10 = this.total;
        if (d10 == null) {
            return 0.0d;
        }
        return d10.doubleValue();
    }

    public void increment(long j10) {
        this.count += j10;
    }

    public boolean isCountOnly() {
        return this.total == null;
    }

    public boolean isScoped() {
        return this.scope != null;
    }

    public boolean isUnscoped() {
        return this.scope == null;
    }

    public void sample(double d10) {
        this.count++;
        Double d11 = this.total;
        if (d11 == null) {
            this.total = Double.valueOf(d10);
            this.sumOfSquares = Double.valueOf(d10 * d10);
        } else {
            this.total = Double.valueOf(d11.doubleValue() + d10);
            this.sumOfSquares = Double.valueOf((d10 * d10) + this.sumOfSquares.doubleValue());
        }
        setMin(Double.valueOf(d10));
        setMax(Double.valueOf(d10));
    }

    public void sampleMetricDataUsage(double d10, double d11) {
        this.count++;
        Double d12 = this.total;
        if (d12 == null) {
            this.total = Double.valueOf(d10);
        } else {
            this.total = Double.valueOf(d12.doubleValue() + d10);
        }
        Double d13 = this.exclusive;
        if (d13 == null) {
            this.exclusive = Double.valueOf(d11);
        } else {
            this.exclusive = Double.valueOf(d13.doubleValue() + d11);
        }
        this.sumOfSquares = Double.valueOf(0.0d);
        this.min = Double.valueOf(0.0d);
        this.max = Double.valueOf(0.0d);
    }

    public void setCount(long j10) {
        this.count = j10;
    }

    public void setExclusive(Double d10) {
        this.exclusive = d10;
    }

    public void setMax(Double d10) {
        if (d10 == null) {
            return;
        }
        if (this.max == null) {
            this.max = d10;
        } else if (d10.doubleValue() > this.max.doubleValue()) {
            this.max = d10;
        }
    }

    public void setMaxFieldValue(Double d10) {
        this.max = d10;
    }

    public void setMin(Double d10) {
        if (d10 == null) {
            return;
        }
        if (this.min == null) {
            this.min = d10;
        } else if (d10.doubleValue() < this.min.doubleValue()) {
            this.min = d10;
        }
    }

    public void setMinFieldValue(Double d10) {
        this.min = d10;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setScope(String str) {
        this.scope = str;
    }

    public void setSumOfSquares(Double d10) {
        this.sumOfSquares = d10;
    }

    public void setTotal(Double d10) {
        this.total = d10;
    }

    public String toString() {
        StringBuilder sbC = b.c("Metric{count=");
        sbC.append(this.count);
        sbC.append(", total=");
        sbC.append(this.total);
        sbC.append(", max=");
        sbC.append(this.max);
        sbC.append(", min=");
        sbC.append(this.min);
        sbC.append(", scope='");
        d.f(sbC, this.scope, '\'', ", name='");
        d.f(sbC, this.name, '\'', ", exclusive='");
        sbC.append(this.exclusive);
        sbC.append('\'');
        sbC.append(", sumofsquares='");
        sbC.append(this.sumOfSquares);
        sbC.append('\'');
        sbC.append('}');
        return sbC.toString();
    }

    public Metric(String str, String str2) {
        this.name = str;
        this.scope = str2;
        this.count = 0L;
    }

    public void increment() {
        increment(1L);
    }

    public Metric(Metric metric) {
        this.name = metric.getName();
        this.scope = metric.getScope();
        this.min = Double.valueOf(metric.getMin());
        this.max = Double.valueOf(metric.getMax());
        this.total = Double.valueOf(metric.getTotal());
        this.sumOfSquares = Double.valueOf(metric.getSumOfSquares());
        this.exclusive = Double.valueOf(metric.getExclusive());
        this.count = metric.getCount();
    }
}

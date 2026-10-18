package com.newrelic.agent.android.harvest.type;

import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonElement;
import com.newrelic.com.google.gson.JsonObject;
import com.newrelic.com.google.gson.JsonPrimitive;
import com.newrelic.com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class BaseHarvestable implements Harvestable {
    public static final Type GSON_STRING_MAP_TYPE = new TypeToken<Map>() { // from class: com.newrelic.agent.android.harvest.type.BaseHarvestable.1
    }.getType();
    private final Harvestable.Type type;

    /* JADX INFO: renamed from: com.newrelic.agent.android.harvest.type.BaseHarvestable$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$com$newrelic$agent$android$harvest$type$Harvestable$Type;

        static {
            int[] iArr = new int[Harvestable.Type.values().length];
            $SwitchMap$com$newrelic$agent$android$harvest$type$Harvestable$Type = iArr;
            try {
                iArr[Harvestable.Type.OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$harvest$type$Harvestable$Type[Harvestable.Type.ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$harvest$type$Harvestable$Type[Harvestable.Type.VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public BaseHarvestable(Harvestable.Type type) {
        this.type = type;
    }

    @Override // com.newrelic.agent.android.harvest.type.Harvestable
    public JsonElement asJson() {
        int i10 = AnonymousClass2.$SwitchMap$com$newrelic$agent$android$harvest$type$Harvestable$Type[this.type.ordinal()];
        if (i10 == 1) {
            return asJsonObject();
        }
        if (i10 == 2) {
            return asJsonArray();
        }
        if (i10 != 3) {
            return null;
        }
        return asJsonPrimitive();
    }

    @Override // com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        return null;
    }

    @Override // com.newrelic.agent.android.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        return null;
    }

    @Override // com.newrelic.agent.android.harvest.type.Harvestable
    public JsonPrimitive asJsonPrimitive() {
        return null;
    }

    @Override // com.newrelic.agent.android.harvest.type.Harvestable
    public Harvestable.Type getType() {
        return this.type;
    }

    public void notEmpty(String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Missing Harvestable field.");
        }
    }

    public void notNull(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Null field in Harvestable object");
        }
    }

    public String optional(String str) {
        return str == null ? "" : str;
    }

    @Override // com.newrelic.agent.android.harvest.type.Harvestable
    public String toJsonString() {
        return asJson().toString();
    }
}

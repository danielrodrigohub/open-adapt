package kotlinx.serialization.json.internal;

import a1.d;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import fd.b;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import p4.h;

/* JADX INFO: compiled from: JsonTreeReader.kt */
/* JADX INFO: loaded from: classes.dex */
public final class JsonTreeReader {
    private final boolean isLenient;
    private final JsonLexer lexer;

    public JsonTreeReader(JsonConfiguration jsonConfiguration, JsonLexer jsonLexer) {
        h.j(jsonConfiguration, "configuration");
        h.j(jsonLexer, "lexer");
        this.lexer = jsonLexer;
        this.isLenient = jsonConfiguration.isLenient();
    }

    private final JsonElement readArray() {
        byte bConsumeNextToken = this.lexer.consumeNextToken();
        if (this.lexer.peekNextToken() == 4) {
            throw d.c(this.lexer, "Unexpected leading comma", 0, 2, null);
        }
        ArrayList arrayList = new ArrayList();
        while (this.lexer.canConsumeValue()) {
            arrayList.add(read());
            bConsumeNextToken = this.lexer.consumeNextToken();
            if (bConsumeNextToken != 4) {
                JsonLexer jsonLexer = this.lexer;
                boolean z10 = bConsumeNextToken == 9;
                int i10 = jsonLexer.currentPosition;
                if (!z10) {
                    jsonLexer.fail("Expected end of the array or comma", i10);
                    throw new b();
                }
            }
        }
        if (bConsumeNextToken == 8) {
            this.lexer.consumeNextToken((byte) 9);
        } else if (bConsumeNextToken == 4) {
            throw d.c(this.lexer, "Unexpected trailing comma", 0, 2, null);
        }
        return new JsonArray(arrayList);
    }

    private final JsonElement readObject() {
        byte bConsumeNextToken = this.lexer.consumeNextToken((byte) 6);
        if (this.lexer.peekNextToken() == 4) {
            throw d.c(this.lexer, "Unexpected leading comma", 0, 2, null);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        while (this.lexer.canConsumeValue()) {
            String strConsumeStringLenient = this.isLenient ? this.lexer.consumeStringLenient() : this.lexer.consumeString();
            this.lexer.consumeNextToken((byte) 5);
            linkedHashMap.put(strConsumeStringLenient, read());
            bConsumeNextToken = this.lexer.consumeNextToken();
            if (bConsumeNextToken != 4 && bConsumeNextToken != 7) {
                throw d.c(this.lexer, "Expected end of the object or comma", 0, 2, null);
            }
        }
        if (bConsumeNextToken == 6) {
            this.lexer.consumeNextToken((byte) 7);
        } else if (bConsumeNextToken == 4) {
            throw d.c(this.lexer, "Unexpected trailing comma", 0, 2, null);
        }
        return new JsonObject(linkedHashMap);
    }

    private final JsonPrimitive readValue(boolean z10) {
        String strConsumeStringLenient = (this.isLenient || !z10) ? this.lexer.consumeStringLenient() : this.lexer.consumeString();
        return (z10 || !h.c(strConsumeStringLenient, SafeJsonPrimitive.NULL_STRING)) ? new JsonLiteral(strConsumeStringLenient, z10) : JsonNull.INSTANCE;
    }

    public final JsonElement read() {
        byte bPeekNextToken = this.lexer.peekNextToken();
        if (bPeekNextToken == 1) {
            return readValue(true);
        }
        if (bPeekNextToken == 0) {
            return readValue(false);
        }
        if (bPeekNextToken == 6) {
            return readObject();
        }
        if (bPeekNextToken == 8) {
            return readArray();
        }
        throw d.c(this.lexer, "Can't begin reading element, unexpected token", 0, 2, null);
    }
}

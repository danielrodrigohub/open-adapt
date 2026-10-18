package com.newrelic.com.google.gson;

import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public enum FieldNamingPolicy implements FieldNamingStrategy {
    IDENTITY { // from class: com.newrelic.com.google.gson.FieldNamingPolicy.1
        @Override // com.newrelic.com.google.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE { // from class: com.newrelic.com.google.gson.FieldNamingPolicy.2
        @Override // com.newrelic.com.google.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return FieldNamingPolicy.upperCaseFirstLetter(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES { // from class: com.newrelic.com.google.gson.FieldNamingPolicy.3
        @Override // com.newrelic.com.google.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return FieldNamingPolicy.upperCaseFirstLetter(FieldNamingPolicy.separateCamelCase(field.getName(), " "));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES { // from class: com.newrelic.com.google.gson.FieldNamingPolicy.4
        @Override // com.newrelic.com.google.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return FieldNamingPolicy.separateCamelCase(field.getName(), "_").toLowerCase();
        }
    },
    LOWER_CASE_WITH_DASHES { // from class: com.newrelic.com.google.gson.FieldNamingPolicy.5
        @Override // com.newrelic.com.google.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return FieldNamingPolicy.separateCamelCase(field.getName(), "-").toLowerCase();
        }
    };

    private static String modifyString(char c10, String str, int i10) {
        if (i10 >= str.length()) {
            return String.valueOf(c10);
        }
        return c10 + str.substring(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String separateCamelCase(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (Character.isUpperCase(cCharAt) && sb2.length() != 0) {
                sb2.append(str2);
            }
            sb2.append(cCharAt);
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String upperCaseFirstLetter(String str) {
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        char cCharAt = str.charAt(0);
        while (i10 < str.length() - 1 && !Character.isLetter(cCharAt)) {
            sb2.append(cCharAt);
            i10++;
            cCharAt = str.charAt(i10);
        }
        if (i10 == str.length()) {
            return sb2.toString();
        }
        if (Character.isUpperCase(cCharAt)) {
            return str;
        }
        sb2.append(modifyString(Character.toUpperCase(cCharAt), str, i10 + 1));
        return sb2.toString();
    }
}

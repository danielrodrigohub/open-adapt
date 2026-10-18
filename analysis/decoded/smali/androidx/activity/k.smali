.class public Landroidx/activity/k;
.super Ljava/lang/Object;
.source "ViewTreeOnBackPressedDispatcherOwner.kt"


# static fields
.field public static a:Ljava/lang/reflect/Method;

.field public static b:Ljava/lang/reflect/Method;

.field public static final c:[[F

.field public static final d:[[F

.field public static final e:[F

.field public static final f:[[F


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [[F

    new-array v2, v0, [F

    .line 1
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [F

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Landroidx/activity/k;->c:[[F

    new-array v1, v0, [[F

    new-array v2, v0, [F

    .line 2
    fill-array-data v2, :array_3

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_4

    aput-object v2, v1, v4

    new-array v2, v0, [F

    fill-array-data v2, :array_5

    aput-object v2, v1, v5

    sput-object v1, Landroidx/activity/k;->d:[[F

    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_6

    sput-object v1, Landroidx/activity/k;->e:[F

    new-array v1, v0, [[F

    new-array v2, v0, [F

    .line 4
    fill-array-data v2, :array_7

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_8

    aput-object v2, v1, v4

    new-array v0, v0, [F

    fill-array-data v0, :array_9

    aput-object v0, v1, v5

    sput-object v1, Landroidx/activity/k;->f:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3ecd759f
        0x3f2671bd
        -0x42ad373b
    .end array-data

    :array_1
    .array-data 4
        -0x417fdcdf
        0x3f9a2a3d
        0x3d3bd167
    .end array-data

    :array_2
    .array-data 4
        -0x44f7c02b
        0x3d4881e4
        0x3f740022
    .end array-data

    :array_3
    .array-data 4
        0x3fee583d
        -0x407e8f35
        0x3e18c46b
    .end array-data

    :array_4
    .array-data 4
        0x3ec669e1
        0x3f1f172e
        -0x43ecf866
    .end array-data

    :array_5
    .array-data 4
        -0x437e39f7
        -0x42f43b81
        0x3f86653c
    .end array-data

    :array_6
    .array-data 4
        0x42be1810
        0x42c80000    # 100.0f
        0x42d9c419
    .end array-data

    :array_7
    .array-data 4
        0x3ed31e17
        0x3eb71a0d
        0x3e38d7b9
    .end array-data

    :array_8
    .array-data 4
        0x3e59b3d0
        0x3f371759
        0x3d93dd98
    .end array-data

    :array_9
    .array-data 4
        0x3c9e47ef
        0x3df40c29
        0x3f7349cc
    .end array-data
.end method

.method public static final a(J)J
    .locals 3

    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    return-wide v0

    :cond_1
    return-wide p0
.end method

.method public static final b(JLvd/b;)J
    .locals 4

    .line 1
    instance-of v0, p2, Lvd/a;

    const/16 v1, 0x2e

    const-string v2, "Cannot coerce value to an empty range: "

    if-eqz v0, :cond_3

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p2, Lvd/a;

    const-string p1, "<this>"

    .line 3
    invoke-static {p0, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p2}, Lvd/a;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    invoke-interface {p2}, Lvd/b;->k()Ljava/lang/Comparable;

    invoke-interface {p2}, Lvd/a;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lvd/b;->k()Ljava/lang/Comparable;

    invoke-interface {p2}, Lvd/a;->m()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lvd/b;->k()Ljava/lang/Comparable;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p2}, Lvd/b;->l()Ljava/lang/Comparable;

    invoke-interface {p2}, Lvd/a;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p2}, Lvd/b;->l()Ljava/lang/Comparable;

    invoke-interface {p2}, Lvd/a;->m()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Lvd/b;->l()Ljava/lang/Comparable;

    move-result-object p0

    .line 7
    :cond_1
    :goto_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    move-object v0, p2

    check-cast v0, Lvd/h;

    invoke-virtual {v0}, Lvd/h;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 10
    invoke-virtual {v0}, Lvd/h;->k()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    cmp-long p2, p0, v1

    if-gez p2, :cond_4

    invoke-virtual {v0}, Lvd/h;->k()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {v0}, Lvd/h;->l()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    cmp-long p2, p0, v1

    if-lez p2, :cond_5

    invoke-virtual {v0}, Lvd/h;->l()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    :cond_5
    :goto_1
    return-wide p0

    .line 12
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(Lu9/b;Z)V
    .locals 8

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1
    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x1

    .line 2
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "name"

    const-string v5, "oidc-auth-component"

    .line 3
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "version"

    const-string v5, "0.13.0"

    .line 4
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "module"

    .line 5
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "classification"

    const-string v4, "core buy flow"

    .line 6
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Account Authenticated"

    const-string v4, "eventName"

    .line 7
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Lfa/m;->c(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "clickActivity"

    .line 9
    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x3

    new-array p1, p1, [Lfd/e;

    const/4 v4, 0x0

    .line 10
    new-instance v5, Lfd/e;

    const-string v6, "pageName"

    const-string v7, "profile>login complete"

    invoke-direct {v5, v6, v7}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, p1, v4

    .line 11
    new-instance v4, Lfd/e;

    const-string v5, "pageType"

    const-string v6, "profile"

    invoke-direct {v4, v5, v6}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, p1, v2

    .line 12
    new-instance v2, Lfd/e;

    const-string v4, "pageDetail"

    const-string v5, "login complete"

    invoke-direct {v2, v4, v5}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, p1, v0

    .line 13
    invoke-static {p1}, Lgd/z;->A([Lfd/e;)Ljava/util/Map;

    move-result-object p1

    const-string v2, "view"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance p1, Lu9/a$a;

    invoke-direct {p1, v3, v1, v0}, Lu9/a$a;-><init>(Ljava/lang/String;Ljava/util/Map;I)V

    .line 15
    invoke-interface {p0, p1}, Lu9/b;->a(Lu9/a$a;)V

    return-void
.end method

.method public static d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 7

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    :cond_1
    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_4

    .line 3
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 4
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    or-int/lit8 v4, v4, 0x20

    add-int/lit8 v4, v4, -0x61

    int-to-char v4, v4

    const/16 v6, 0x1a

    if-ge v4, v6, :cond_3

    or-int/lit8 v5, v5, 0x20

    add-int/lit8 v5, v5, -0x61

    int-to-char v5, v5

    if-ne v4, v5, :cond_3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    return v1
.end method

.method public static final e(Lv9/l;Lv9/k;)V
    .locals 1

    const-string v0, "adaptKitDeviceRequest"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw9/u1;->l:Lw9/u1;

    invoke-virtual {p0, v0, p1}, Lv9/l;->e(Lw9/u1;Lv9/k;)V

    return-void
.end method

.method public static final f(Lv9/l;Lv9/k;)V
    .locals 1

    const-string v0, "adaptKitDeviceRequest"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw9/u1;->j:Lw9/u1;

    invoke-virtual {p0, v0, p1}, Lv9/l;->e(Lw9/u1;Lv9/k;)V

    return-void
.end method

.method public static final g(Lv9/l;Lv9/k;)V
    .locals 1

    const-string v0, "adaptKitDeviceRequest"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw9/u1;->k:Lw9/u1;

    invoke-virtual {p0, v0, p1}, Lv9/l;->e(Lw9/u1;Lv9/k;)V

    return-void
.end method

.method public static final h(Lv9/l;Lw9/u1;Lv9/k;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shoe"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lv9/l;->e(Lw9/u1;Lv9/k;)V

    return-void
.end method

.method public static i(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 7

    .line 1
    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Landroidx/activity/k;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 4
    :try_start_0
    const-class v0, Landroid/os/Bundle;

    const-string v4, "getIBinder"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/activity/k;->a:Ljava/lang/reflect/Method;

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    sget-object v0, Landroidx/activity/k;->a:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to retrieve getIBinder method"

    .line 7
    invoke-static {p1, p0}, Lm5/p;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    :goto_0
    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 8
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    :goto_1
    const-string p1, "Failed to invoke getIBinder via reflection"

    .line 9
    invoke-static {p1, p0}, Lm5/p;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v1
.end method

.method public static final j(Lwd/b;)Ljava/lang/Class;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lrd/f;

    invoke-interface {p0}, Lrd/f;->b()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    invoke-static {p0, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final k(Lwd/b;)Ljava/lang/Class;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p0, Lrd/f;

    invoke-interface {p0}, Lrd/f;->b()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-class p0, Ljava/lang/Short;

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-class p0, Ljava/lang/Float;

    goto :goto_0

    :sswitch_2
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-class p0, Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3
    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-class p0, Ljava/lang/Void;

    goto :goto_0

    :sswitch_4
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const-class p0, Ljava/lang/Long;

    goto :goto_0

    :sswitch_5
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const-class p0, Ljava/lang/Character;

    goto :goto_0

    :sswitch_6
    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    :sswitch_7
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    :sswitch_8
    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const-class p0, Ljava/lang/Double;

    :goto_0
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static final l(Ljava/lang/Class;)Lwd/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Landroidx/lifecycle/q;)Landroidx/lifecycle/l;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Landroidx/lifecycle/q;->a()Landroidx/lifecycle/i;

    move-result-object p0

    const-string v0, "lifecycle"

    invoke-static {p0, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/i;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    invoke-interface {v1, v3}, Ljd/f;->plus(Ljd/f;)Ljd/f;

    move-result-object v1

    .line 5
    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;-><init>(Landroidx/lifecycle/i;Ljd/f;)V

    .line 6
    iget-object v1, p0, Landroidx/lifecycle/i;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    new-instance v4, Landroidx/lifecycle/m;

    invoke-direct {v4, v0, v2}, Landroidx/lifecycle/m;-><init>(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Ljd/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_0
    return-object v0
.end method

.method public static n(F)I
    .locals 15

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/high16 p0, -0x1000000

    return p0

    :cond_0
    const/high16 v0, 0x42c60000    # 99.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/high16 v0, 0x41800000    # 16.0f

    add-float v1, p0, v0

    const/high16 v2, 0x42e80000    # 116.0f

    div-float/2addr v1, v2

    const v3, 0x4461d2f7

    const v4, 0x3c111aa7

    const/high16 v5, 0x41000000    # 8.0f

    cmpl-float v5, p0, v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    :goto_0
    if-eqz v5, :cond_3

    mul-float p0, v1, v1

    mul-float/2addr p0, v1

    goto :goto_1

    :cond_3
    div-float/2addr p0, v3

    :goto_1
    mul-float v5, v1, v1

    mul-float/2addr v5, v1

    cmpl-float v4, v5, v4

    if-lez v4, :cond_4

    move v4, v6

    goto :goto_2

    :cond_4
    move v4, v7

    :goto_2
    if-eqz v4, :cond_5

    move v8, v5

    goto :goto_3

    :cond_5
    mul-float v8, v1, v2

    sub-float/2addr v8, v0

    div-float/2addr v8, v3

    :goto_3
    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    mul-float/2addr v1, v2

    sub-float/2addr v1, v0

    div-float v5, v1, v3

    :goto_4
    sget-object v0, Landroidx/activity/k;->e:[F

    aget v1, v0, v7

    mul-float/2addr v8, v1

    float-to-double v9, v8

    aget v1, v0, v6

    mul-float/2addr p0, v1

    float-to-double v11, p0

    const/4 p0, 0x2

    aget p0, v0, p0

    mul-float/2addr v5, p0

    float-to-double v13, v5

    invoke-static/range {v9 .. v14}, La0/a;->a(DDD)I

    move-result p0

    return p0
.end method

.method public static o(I)F
    .locals 6

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    const v0, 0x3d25aee6

    cmpg-float v0, p0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-gtz v0, :cond_0

    const v0, 0x414eb852

    div-float/2addr p0, v0

    :goto_0
    mul-float/2addr p0, v1

    return p0

    :cond_0
    const v0, 0x3d6147ae

    add-float/2addr p0, v0

    const v0, 0x3f870a3d

    div-float/2addr p0, v0

    float-to-double v2, p0

    const-wide v4, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p0, v2

    goto :goto_0
.end method

.method public static final p(I)I
    .locals 1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    int-to-float p0, p0

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    float-to-int p0, p0

    goto :goto_0

    :cond_2
    const p0, 0x7fffffff

    :goto_0
    return p0
.end method

.method public static q(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 7

    .line 1
    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_2

    .line 3
    :cond_0
    sget-object v0, Landroidx/activity/k;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 4
    :try_start_0
    const-class v0, Landroid/os/Bundle;

    const-string v4, "putIBinder"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/activity/k;->b:Ljava/lang/reflect/Method;

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    sget-object v0, Landroidx/activity/k;->b:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to retrieve putIBinder method"

    .line 7
    invoke-static {p1, p0}, Lm5/p;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    :goto_0
    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v3

    .line 8
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    :goto_1
    const-string p1, "Failed to invoke putIBinder via reflection"

    .line 9
    invoke-static {p1, p0}, Lm5/p;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static final r(Lvd/c;I)Lvd/c;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "step"

    .line 2
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lvd/c;->h:I

    .line 4
    iget v1, p0, Lvd/c;->i:I

    .line 5
    iget p0, p0, Lvd/c;->j:I

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    neg-int p1, p1

    .line 6
    :goto_1
    new-instance p0, Lvd/c;

    invoke-direct {p0, v0, v1, p1}, Lvd/c;-><init>(III)V

    return-object p0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step must be positive, was: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    const/16 v5, 0x41

    const/4 v6, 0x1

    if-lt v3, v5, :cond_0

    if-gt v3, v4, :cond_0

    move v3, v6

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_4

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 4
    aget-char v3, p0, v2

    if-lt v3, v5, :cond_1

    if-gt v3, v4, :cond_1

    move v7, v6

    goto :goto_3

    :cond_1
    move v7, v1

    :goto_3
    if-eqz v7, :cond_2

    xor-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    .line 5
    aput-char v3, p0, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6
    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public static final t(Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "with(entries.iterator().\u2026ingletonMap(key, value) }"

    invoke-static {p0, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static u(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7a

    const/16 v5, 0x61

    const/4 v6, 0x1

    if-lt v3, v5, :cond_0

    if-gt v3, v4, :cond_0

    move v3, v6

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_4

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 4
    aget-char v3, p0, v2

    if-lt v3, v5, :cond_1

    if-gt v3, v4, :cond_1

    move v7, v6

    goto :goto_3

    :cond_1
    move v7, v1

    :goto_3
    if-eqz v7, :cond_2

    xor-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    .line 5
    aput-char v3, p0, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6
    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public static final v(Lu9/b;Lob/c;Led/e;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credential"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telemetryProvider"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Lob/d;->a(Lob/c;Led/e;)Lxb/a;

    move-result-object p1

    invoke-virtual {p1}, Lxb/a;->b()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0, p2}, Landroidx/activity/k;->c(Lu9/b;Z)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {p0, v1}, Landroidx/activity/k;->c(Lu9/b;Z)V

    goto :goto_0

    .line 5
    :cond_3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "name"

    const-string v5, "oidc-auth-component"

    .line 7
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "version"

    const-string v5, "0.13.0"

    .line 8
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "module"

    .line 9
    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "classification"

    const-string v4, "core buy flow"

    .line 10
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Account Created"

    const-string v4, "eventName"

    .line 11
    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "clickActivity"

    const-string v5, "oidc:join now:success"

    .line 12
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Lfd/e;

    .line 13
    new-instance v4, Lfd/e;

    const-string v5, "pageName"

    const-string v6, "profile>registration complete"

    invoke-direct {v4, v5, v6}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, p2

    .line 14
    new-instance p2, Lfd/e;

    const-string v4, "pageType"

    const-string v5, "profile"

    invoke-direct {p2, v4, v5}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, v0, v1

    .line 15
    new-instance p2, Lfd/e;

    const-string v1, "pageDetail"

    const-string v4, "registration complete"

    invoke-direct {p2, v1, v4}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, v0, v2

    .line 16
    invoke-static {v0}, Lgd/z;->A([Lfd/e;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "view"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p2, Lu9/a$a;

    invoke-direct {p2, v3, p1, v2}, Lu9/a$a;-><init>(Ljava/lang/String;Ljava/util/Map;I)V

    .line 18
    invoke-interface {p0, p2}, Lu9/b;->a(Lu9/a$a;)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {p0, p2}, Landroidx/activity/k;->c(Lu9/b;Z)V

    :goto_0
    return-void
.end method

.method public static final w(II)Lvd/e;
    .locals 1

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_0

    .line 1
    sget-object p0, Lvd/e;->k:Lvd/e$a;

    .line 2
    sget-object p0, Lvd/e;->l:Lvd/e;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lvd/e;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lvd/e;-><init>(II)V

    return-object v0
.end method

.method public static x()F
    .locals 4

    const/high16 v0, 0x42480000    # 50.0f

    float-to-double v0, v0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

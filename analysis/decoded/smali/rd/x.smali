.class public final Lrd/x;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field public static final a:Lrd/y;

.field public static final b:[Lwd/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrd/y;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lrd/y;

    invoke-direct {v0}, Lrd/y;-><init>()V

    :goto_0
    sput-object v0, Lrd/x;->a:Lrd/y;

    const/4 v0, 0x0

    new-array v0, v0, [Lwd/b;

    .line 4
    sput-object v0, Lrd/x;->b:[Lwd/b;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lwd/b;
    .locals 1

    .line 1
    sget-object v0, Lrd/x;->a:Lrd/y;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrd/g;

    invoke-direct {v0, p0}, Lrd/g;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Class;)Lwd/g;
    .locals 2

    .line 1
    sget-object v0, Lrd/x;->a:Lrd/y;

    invoke-static {p0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrd/c0;

    invoke-direct {v0, p0, v1}, Lrd/c0;-><init>(Lwd/b;Ljava/util/List;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Class;Lwd/h;)Lwd/g;
    .locals 1

    .line 1
    sget-object v0, Lrd/x;->a:Lrd/y;

    invoke-static {p0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrd/c0;

    invoke-direct {v0, p0, p1}, Lrd/c0;-><init>(Lwd/b;Ljava/util/List;)V

    return-object v0
.end method

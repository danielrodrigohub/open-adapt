.class public final Lh7/e;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Le7/y;


# instance fields
.field public final h:Lg7/e;


# direct methods
.method public constructor <init>(Lg7/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh7/e;->h:Lg7/e;

    return-void
.end method


# virtual methods
.method public final a(Le7/h;Ll7/a;)Le7/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le7/h;",
            "Ll7/a<",
            "TT;>;)",
            "Le7/x<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Ll7/a;->a:Ljava/lang/Class;

    .line 2
    const-class v1, Lf7/a;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lf7/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v1, p0, Lh7/e;->h:Lg7/e;

    invoke-virtual {p0, v1, p1, p2, v0}, Lh7/e;->b(Lg7/e;Le7/h;Ll7/a;Lf7/a;)Le7/x;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lg7/e;Le7/h;Ll7/a;Lf7/a;)Le7/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/e;",
            "Le7/h;",
            "Ll7/a<",
            "*>;",
            "Lf7/a;",
            ")",
            "Le7/x<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Lf7/a;->value()Ljava/lang/Class;

    move-result-object v0

    .line 2
    new-instance v1, Ll7/a;

    invoke-direct {v1, v0}, Ll7/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 3
    invoke-virtual {p1, v1}, Lg7/e;->a(Ll7/a;)Lg7/q;

    move-result-object p1

    invoke-interface {p1}, Lg7/q;->construct()Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of v0, p1, Le7/x;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Le7/x;

    goto :goto_2

    .line 6
    :cond_0
    instance-of v0, p1, Le7/y;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Le7/y;

    invoke-interface {p1, p2, p3}, Le7/y;->a(Le7/h;Ll7/a;)Le7/x;

    move-result-object p1

    goto :goto_2

    .line 8
    :cond_1
    instance-of v0, p1, Le7/r;

    if-nez v0, :cond_3

    instance-of v1, p1, Le7/k;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p4, "Invalid attempt to bind an instance of "

    .line 10
    invoke-static {p4}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a @JsonAdapter for "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ll7/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 12
    move-object v0, p1

    check-cast v0, Le7/r;

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 13
    :goto_1
    instance-of v2, p1, Le7/k;

    if-eqz v2, :cond_5

    .line 14
    move-object v1, p1

    check-cast v1, Le7/k;

    .line 15
    :cond_5
    new-instance p1, Lh7/o;

    invoke-direct {p1, v0, v1, p2, p3}, Lh7/o;-><init>(Le7/r;Le7/k;Le7/h;Ll7/a;)V

    :goto_2
    if-eqz p1, :cond_6

    .line 16
    invoke-interface {p4}, Lf7/a;->nullSafe()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 17
    new-instance p2, Le7/w;

    invoke-direct {p2, p1}, Le7/w;-><init>(Le7/x;)V

    move-object p1, p2

    :cond_6
    return-object p1
.end method

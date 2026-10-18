.class public final Lm7/v0;
.super Ljava/lang/Object;
.source "NewInstanceSchemaLite.java"

# interfaces
.implements Lm7/u0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lm7/w;

    sget-object v0, Lm7/w$f;->k:Lm7/w$f;

    .line 2
    invoke-virtual {p1, v0}, Lm7/w;->o(Lm7/w$f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class public final Lg7/j;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lg7/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg7/q<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg7/j;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Le7/m;

    iget-object v1, p0, Lg7/j;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Le7/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

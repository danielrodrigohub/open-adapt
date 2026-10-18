.class public final Lc7/g;
.super Ljava/lang/Object;
.source "StreamingAeadWrapper.java"

# interfaces
.implements Ly6/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ly6/j<",
        "Ly6/n;",
        "Ly6/n;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ly6/n;",
            ">;"
        }
    .end annotation

    return-void
.end method

.method public final b(Ly6/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lc7/e;

    invoke-direct {v0, p1}, Lc7/e;-><init>(Ly6/i;)V

    return-object v0
.end method

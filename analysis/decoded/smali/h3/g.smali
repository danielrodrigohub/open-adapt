.class public Lh3/g;
.super Lh3/a;
.source "RequestOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh3/a<",
        "Lh3/g;",
        ">;"
    }
.end annotation


# static fields
.field public static H:Lh3/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh3/a;-><init>()V

    return-void
.end method

.method public static C()Lh3/g;
    .locals 3

    .line 1
    sget-object v0, Lh3/g;->H:Lh3/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lh3/g;

    invoke-direct {v0}, Lh3/g;-><init>()V

    .line 3
    sget-object v1, Ly2/m;->b:Ly2/m$a;

    new-instance v2, Ly2/k;

    invoke-direct {v2}, Ly2/k;-><init>()V

    invoke-virtual {v0, v1, v2}, Lh3/a;->A(Ly2/m;Lp2/l;)Lh3/a;

    move-result-object v0

    .line 4
    check-cast v0, Lh3/g;

    invoke-virtual {v0}, Lh3/a;->b()Lh3/a;

    move-result-object v0

    check-cast v0, Lh3/g;

    sput-object v0, Lh3/g;->H:Lh3/g;

    .line 5
    :cond_0
    sget-object v0, Lh3/g;->H:Lh3/g;

    return-object v0
.end method

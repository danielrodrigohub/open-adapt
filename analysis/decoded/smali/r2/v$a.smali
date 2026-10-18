.class public final Lr2/v$a;
.super Ljava/lang/Object;
.source "LockedResource.java"

# interfaces
.implements Lm3/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr2/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm3/a$b<",
        "Lr2/v<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lr2/v;

    invoke-direct {v0}, Lr2/v;-><init>()V

    return-object v0
.end method

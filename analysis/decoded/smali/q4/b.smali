.class public final Lq4/b;
.super Lp4/g;
.source "AdsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq4/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp4/g<",
        "Lp4/x$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lp4/x$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp4/x$b;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lp4/x$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lq4/b;->r:Lp4/x$b;

    return-void
.end method

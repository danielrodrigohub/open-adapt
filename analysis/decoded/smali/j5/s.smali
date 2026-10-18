.class public abstract Lj5/s;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj5/s$a;
    }
.end annotation


# instance fields
.field public a:Lj5/s$a;

.field public b:Ll5/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lj5/s;->a:Lj5/s$a;

    .line 2
    iput-object v0, p0, Lj5/s;->b:Ll5/e;

    return-void
.end method

.method public abstract c([Ln3/t1;Lp4/u0;)Lj5/t;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation
.end method

.method public d(Lp3/d;)V
    .locals 0

    return-void
.end method

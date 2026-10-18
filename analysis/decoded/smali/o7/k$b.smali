.class public final Lo7/k$b;
.super Lrd/o;
.source "BigfootApplication.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo7/k;-><init>(Lcom/nike/adapt/BigfootApplication;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/BigfootApplication;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/BigfootApplication;)V
    .locals 0

    iput-object p1, p0, Lo7/k$b;->h:Lcom/nike/adapt/BigfootApplication;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/k$b;->h:Lcom/nike/adapt/BigfootApplication;

    .line 2
    iget-object v0, v0, Lcom/nike/adapt/BigfootApplication;->o:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    .line 3
    invoke-interface {v0}, Lh8/a;->R()Lcom/nike/adapt/presenter/profile/AdaptUser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nike/adapt/presenter/profile/AdaptUser;->getNuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

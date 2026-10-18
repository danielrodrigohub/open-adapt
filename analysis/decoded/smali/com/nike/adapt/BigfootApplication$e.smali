.class public final Lcom/nike/adapt/BigfootApplication$e;
.super Ljava/lang/Object;
.source "BigfootApplication.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/BigfootApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nike/adapt/BigfootApplication;
    .locals 1

    .line 1
    sget-object v0, Lcom/nike/adapt/BigfootApplication;->r:Lfd/h;

    .line 2
    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nike/adapt/BigfootApplication;

    return-object v0
.end method

.method public final b()Lcom/nike/adapt/BigfootApplication;
    .locals 1

    sget-object v0, Lcom/nike/adapt/BigfootApplication;->q:Lcom/nike/adapt/BigfootApplication;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "application"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c()Lg8/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/nike/adapt/BigfootApplication;->v:Lfd/h;

    .line 2
    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg8/a;

    return-object v0
.end method

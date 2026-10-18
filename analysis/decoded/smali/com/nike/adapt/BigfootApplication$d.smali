.class public final Lcom/nike/adapt/BigfootApplication$d;
.super Lrd/o;
.source "BigfootApplication.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/BigfootApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lg8/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lcom/nike/adapt/BigfootApplication$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/BigfootApplication$d;

    invoke-direct {v0}, Lcom/nike/adapt/BigfootApplication$d;-><init>()V

    sput-object v0, Lcom/nike/adapt/BigfootApplication$d;->h:Lcom/nike/adapt/BigfootApplication$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/nike/adapt/BigfootApplication;->u:Lg8/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "_oauthModule"

    .line 2
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

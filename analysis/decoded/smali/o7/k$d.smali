.class public final Lo7/k$d;
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


# static fields
.field public static final h:Lo7/k$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo7/k$d;

    invoke-direct {v0}, Lo7/k$d;-><init>()V

    sput-object v0, Lo7/k$d;->h:Lo7/k$d;

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

    .line 2
    invoke-virtual {v0}, Lg8/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "_oauthModule"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

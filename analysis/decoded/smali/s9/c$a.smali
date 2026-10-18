.class public final Ls9/c$a;
.super Lrd/o;
.source "BatteryAlarmUtil.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls9/c;
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
.field public static final h:Ls9/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls9/c$a;

    invoke-direct {v0}, Ls9/c$a;-><init>()V

    sput-object v0, Ls9/c$a;->h:Ls9/c$a;

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

    sget-object v0, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v0}, Lcom/nike/adapt/BigfootApplication$e;->c()Lg8/a;

    move-result-object v0

    return-object v0
.end method

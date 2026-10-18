.class public final Lea/n;
.super Lrd/o;
.source "AdaptKitPairedDevices.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lea/e;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lea/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lea/n;

    invoke-direct {v0}, Lea/n;-><init>()V

    sput-object v0, Lea/n;->h:Lea/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lea/e;

    const-string v0, "snapshot"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lea/e;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

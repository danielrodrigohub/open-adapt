.class public final Lv9/x;
.super Lrd/o;
.source "AdaptKitModule.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/d0;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lv9/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv9/x;

    invoke-direct {v0}, Lv9/x;-><init>()V

    sput-object v0, Lv9/x;->h:Lv9/x;

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
    check-cast p1, Lv9/d0;

    const-string v0, "$this$pairedDevicesListener"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lv9/w;->h:Lv9/w;

    .line 4
    iput-object v0, p1, Lv9/d0;->c:Lqd/l;

    .line 5
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

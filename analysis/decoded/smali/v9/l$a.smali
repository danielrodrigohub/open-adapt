.class public final Lv9/l$a;
.super Lrd/o;
.source "AdaptKitDeviceRequester.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv9/l;-><init>(Lea/m;Lv9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lea/m;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lv9/l;


# direct methods
.method public constructor <init>(Lv9/l;)V
    .locals 0

    iput-object p1, p0, Lv9/l$a;->h:Lv9/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lea/m;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lv9/l$a;->h:Lv9/l;

    .line 4
    iput-object p1, v0, Lv9/l;->a:Lea/m;

    .line 5
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

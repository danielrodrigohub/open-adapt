.class public final Lv9/w;
.super Lrd/o;
.source "AdaptKitModule.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lea/o;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lv9/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv9/w;

    invoke-direct {v0}, Lv9/w;-><init>()V

    sput-object v0, Lv9/w;->h:Lv9/w;

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
    .locals 5

    .line 1
    check-cast p1, Lea/o;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lv9/t;->a:Lv9/t;

    .line 4
    sget-object v0, Lv9/t;->i:Leb/f;

    const/4 v1, 0x1

    new-array v1, v1, [Leb/g;

    .line 5
    new-instance v2, Leb/c;

    new-instance v3, Leb/a;

    .line 6
    iget-object p1, p1, Lea/o;->k:Ljava/lang/String;

    const-string v4, "Error retrieving Shoes in init(): "

    .line 7
    invoke-static {v4, p1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {v3, p1}, Leb/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Leb/c;-><init>(Leb/d;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Leb/f;->a([Leb/g;)V

    .line 9
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

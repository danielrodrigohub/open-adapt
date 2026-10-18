.class public final Lv9/g3$b;
.super Lrd/o;
.source "AdaptKitControllerResult.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv9/g3;->c()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lga/a;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lv9/g3$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv9/g3$b;

    invoke-direct {v0}, Lv9/g3$b;-><init>()V

    sput-object v0, Lv9/g3$b;->h:Lv9/g3$b;

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
    check-cast p1, Lga/a;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Leb/d;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

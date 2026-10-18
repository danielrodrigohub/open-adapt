.class public final Lo7/f$c;
.super Lrd/o;
.source "AdaptKitFactory.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "[",
        "Ljava/lang/String;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lo7/f$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo7/f$c;

    invoke-direct {v0}, Lo7/f$c;-><init>()V

    sput-object v0, Lo7/f$c;->h:Lo7/f$c;

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
    check-cast p1, [Ljava/lang/String;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

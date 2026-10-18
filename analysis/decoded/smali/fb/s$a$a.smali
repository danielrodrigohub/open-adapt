.class public final Lfb/s$a$a;
.super Lrd/o;
.source "SessionDownload.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfb/s$a;-><init>(Lfb/s;Ljava/lang/String;Lqd/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lfb/s$a;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Lfb/s$a;


# direct methods
.method public constructor <init>(Lqd/l;Lfb/s$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/l<",
            "-",
            "Lfb/s$a;",
            "Lfd/o;",
            ">;",
            "Lfb/s$a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lfb/s$a$a;->h:Lqd/l;

    iput-object p2, p0, Lfb/s$a$a;->i:Lfb/s$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lfb/s$a$a;->h:Lqd/l;

    iget-object v1, p0, Lfb/s$a$a;->i:Lfb/s$a;

    invoke-interface {v0, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method

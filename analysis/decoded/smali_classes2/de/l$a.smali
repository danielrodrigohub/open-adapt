.class public final Lde/l$a;
.super Lrd/o;
.source "ForwardingFileSystem.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/l;->listRecursively(Lde/a0;Z)Lxd/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lde/a0;",
        "Lde/a0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lde/l;


# direct methods
.method public constructor <init>(Lde/l;)V
    .locals 0

    iput-object p1, p0, Lde/l$a;->h:Lde/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lde/a0;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lde/l$a;->h:Lde/l;

    const-string v1, "listRecursively"

    invoke-virtual {v0, p1, v1}, Lde/l;->onPathResult(Lde/a0;Ljava/lang/String;)Lde/a0;

    move-result-object p1

    return-object p1
.end method

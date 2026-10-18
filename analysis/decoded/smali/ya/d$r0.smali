.class public final Lya/d$r0;
.super Ljava/lang/Object;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lfa/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->n0(Lfa/g$b;Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final h:Lfa/l$d;

.field public final i:Lfa/l$a;

.field public final j:Lfa/l$b;


# direct methods
.method public constructor <init>(Lfa/l$c;Lfa/l$c;Lfa/l$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lfa/l$d;

    invoke-direct {v0, p1}, Lfa/l$d;-><init>(Lfa/l$c;)V

    iput-object v0, p0, Lya/d$r0;->h:Lfa/l$d;

    .line 3
    new-instance p1, Lfa/l$a;

    invoke-direct {p1, p2}, Lfa/l$a;-><init>(Lfa/l$c;)V

    iput-object p1, p0, Lya/d$r0;->i:Lfa/l$a;

    .line 4
    new-instance p1, Lfa/l$b;

    invoke-direct {p1, p3}, Lfa/l$b;-><init>(Lfa/l$c;)V

    iput-object p1, p0, Lya/d$r0;->j:Lfa/l$b;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    invoke-static {p0}, Lfa/o$a;->a(Lfa/o;)Z

    move-result v0

    return v0
.end method

.method public final o()Lfa/l$b;
    .locals 1

    iget-object v0, p0, Lya/d$r0;->j:Lfa/l$b;

    return-object v0
.end method

.method public final p()Lfa/l$a;
    .locals 1

    iget-object v0, p0, Lya/d$r0;->i:Lfa/l$a;

    return-object v0
.end method

.method public final y()Lfa/l$d;
    .locals 1

    iget-object v0, p0, Lya/d$r0;->h:Lfa/l$d;

    return-object v0
.end method

.class public final Lhc/l$f0;
.super Ljava/lang/Object;
.source "CoreRFBigfoot.kt"

# interfaces
.implements Lhc/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->g(Lnc/d;)Lhc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhc/l;


# direct methods
.method public constructor <init>(Lhc/l;)V
    .locals 0

    iput-object p1, p0, Lhc/l$f0;->a:Lhc/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lhc/l$f0;->a:Lhc/l;

    .line 2
    iget-object v0, v0, Lhc/l;->o:Lhc/k0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lhc/k0;->c(Z)V

    :cond_0
    return-void
.end method

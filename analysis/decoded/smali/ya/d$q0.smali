.class public final Lya/d$q0;
.super Lld/c;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->n0(Lfa/g$b;Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.android.adaptkit.repository.controller.AdaptKitControlsRepositoryImpl"
    f = "AdaptKitControlsRepositories.kt"
    l = {
        0x69b,
        0x69c,
        0x69d
    }
    m = "slotCheck"
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Lfa/l$c;

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic l:Lya/d;

.field public m:I


# direct methods
.method public constructor <init>(Lya/d;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lya/d;",
            "Ljd/d<",
            "-",
            "Lya/d$q0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lya/d$q0;->l:Lya/d;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lya/d$q0;->k:Ljava/lang/Object;

    iget p1, p0, Lya/d$q0;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lya/d$q0;->m:I

    iget-object p1, p0, Lya/d$q0;->l:Lya/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lya/d;->n0(Lfa/g$b;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

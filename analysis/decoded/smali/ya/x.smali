.class public final Lya/x;
.super Lld/c;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation runtime Lld/e;
    c = "com.nike.android.adaptkit.repository.controller.AdaptKitControlsRepositoryImpl"
    f = "AdaptKitControlsRepositories.kt"
    l = {
        0x684
    }
    m = "slotErrorType"
.end annotation


# instance fields
.field public h:Lfa/g$b;

.field public i:Lrc/b;

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lya/d;

.field public l:I


# direct methods
.method public constructor <init>(Lya/d;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lya/d;",
            "Ljd/d<",
            "-",
            "Lya/x;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lya/x;->k:Lya/d;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lya/x;->j:Ljava/lang/Object;

    iget p1, p0, Lya/x;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lya/x;->l:I

    iget-object p1, p0, Lya/x;->k:Lya/d;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lya/d;->o0(ILfa/g$b;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class public final Lya/b0;
.super Lld/c;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation runtime Lld/e;
    c = "com.nike.android.adaptkit.repository.controller.AdaptKitControlsRepositoryImpl"
    f = "AdaptKitControlsRepositories.kt"
    l = {
        0x6b0
    }
    m = "transferFirmware"
.end annotation


# instance fields
.field public h:Lya/d;

.field public i:Lv9/a;

.field public j:Lfa/g$b;

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
            "Lya/b0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lya/b0;->l:Lya/d;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lya/b0;->k:Ljava/lang/Object;

    iget p1, p0, Lya/b0;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lya/b0;->m:I

    iget-object p1, p0, Lya/b0;->l:Lya/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lya/d;->b(Lv9/a;Lfa/g$b;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

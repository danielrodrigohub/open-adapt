.class public final Lbb/b$b;
.super Lld/c;
.source "AdaptKitFirmwareRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/b;->b(Lfa/b$c;Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.android.adaptkit.repository.firmware.AdaptKitFirmwareRepositoryImpl"
    f = "AdaptKitFirmwareRepository.kt"
    l = {
        0x3e
    }
    m = "downloadFirmware"
.end annotation


# instance fields
.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lbb/b;

.field public j:I


# direct methods
.method public constructor <init>(Lbb/b;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbb/b;",
            "Ljd/d<",
            "-",
            "Lbb/b$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbb/b$b;->i:Lbb/b;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lbb/b$b;->h:Ljava/lang/Object;

    iget p1, p0, Lbb/b$b;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lbb/b$b;->j:I

    iget-object p1, p0, Lbb/b$b;->i:Lbb/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lbb/b;->b(Lfa/b$c;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

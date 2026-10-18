.class public final Lp7/a$b;
.super Lld/c;
.source "AssetsRequester.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/a;->b(Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.assetservice.AssetsRequester"
    f = "AssetsRequester.kt"
    l = {
        0x21
    }
    m = "fetchManifestJsonAndPreloadAsset"
.end annotation


# instance fields
.field public h:Lp7/a;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lp7/a;

.field public k:I


# direct methods
.method public constructor <init>(Lp7/a;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/a;",
            "Ljd/d<",
            "-",
            "Lp7/a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lp7/a$b;->j:Lp7/a;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lp7/a$b;->i:Ljava/lang/Object;

    iget p1, p0, Lp7/a$b;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp7/a$b;->k:I

    iget-object p1, p0, Lp7/a$b;->j:Lp7/a;

    invoke-virtual {p1, p0}, Lp7/a;->b(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

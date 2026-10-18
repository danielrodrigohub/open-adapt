.class public final Lx7/b$b;
.super Lld/c;
.source "ManifestApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx7/b;->a(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.network.assets.ManifestApiImpl"
    f = "ManifestApi.kt"
    l = {
        0x1c,
        0x1e
    }
    m = "getAssetsManifestJson"
.end annotation


# instance fields
.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lx7/b;

.field public j:I


# direct methods
.method public constructor <init>(Lx7/b;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx7/b;",
            "Ljd/d<",
            "-",
            "Lx7/b$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx7/b$b;->i:Lx7/b;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lx7/b$b;->h:Ljava/lang/Object;

    iget p1, p0, Lx7/b$b;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx7/b$b;->j:I

    iget-object p1, p0, Lx7/b$b;->i:Lx7/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lx7/b;->a(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

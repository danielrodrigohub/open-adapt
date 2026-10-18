.class public final Lac/b$a;
.super Lld/c;
.source "PersistenceHelperImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lac/b;->b(Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.authcomponent.oidc.internal.persistence.PersistenceHelperImpl"
    f = "PersistenceHelperImpl.kt"
    l = {
        0x26
    }
    m = "getRefreshTokensToRevoke"
.end annotation


# instance fields
.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lac/b;

.field public j:I


# direct methods
.method public constructor <init>(Lac/b;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lac/b;",
            "Ljd/d<",
            "-",
            "Lac/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lac/b$a;->i:Lac/b;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lac/b$a;->h:Ljava/lang/Object;

    iget p1, p0, Lac/b$a;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lac/b$a;->j:I

    iget-object p1, p0, Lac/b$a;->i:Lac/b;

    invoke-virtual {p1, p0}, Lac/b;->b(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

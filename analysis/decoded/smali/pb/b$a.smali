.class public final Lpb/b$a;
.super Lld/c;
.source "OIDCAuthManagerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpb/b;->c(Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.authcomponent.oidc.internal.OIDCAuthManagerImpl"
    f = "OIDCAuthManagerImpl.kt"
    l = {
        0x2d
    }
    m = "signOut"
.end annotation


# instance fields
.field public h:Lpb/b;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lpb/b;

.field public k:I


# direct methods
.method public constructor <init>(Lpb/b;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpb/b;",
            "Ljd/d<",
            "-",
            "Lpb/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpb/b$a;->j:Lpb/b;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lpb/b$a;->i:Ljava/lang/Object;

    iget p1, p0, Lpb/b$a;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lpb/b$a;->k:I

    iget-object p1, p0, Lpb/b$a;->j:Lpb/b;

    invoke-virtual {p1, p0}, Lpb/b;->c(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

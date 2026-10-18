.class public final Lpb/a$a;
.super Lld/c;
.source "OIDCAuthManagerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpb/a;->a(Landroidx/fragment/app/p;Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.authcomponent.oidc.internal.OIDCAuthManagerImpl$authFactory$1"
    f = "OIDCAuthManagerImpl.kt"
    l = {
        0x1d
    }
    m = "signIn"
.end annotation


# instance fields
.field public h:Lpb/a;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lpb/a;

.field public k:I


# direct methods
.method public constructor <init>(Lpb/a;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpb/a;",
            "Ljd/d<",
            "-",
            "Lpb/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpb/a$a;->j:Lpb/a;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lpb/a$a;->i:Ljava/lang/Object;

    iget p1, p0, Lpb/a$a;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lpb/a$a;->k:I

    iget-object p1, p0, Lpb/a$a;->j:Lpb/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lpb/a;->a(Landroidx/fragment/app/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class public final Lzb/c$a;
.super Lld/c;
.source "OIDCAuthBrowser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzb/c;->b(Landroidx/fragment/app/p;Landroid/content/Intent;Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.authcomponent.oidc.internal.nativeoidc.browser.OIDCAuthBrowserKt"
    f = "OIDCAuthBrowser.kt"
    l = {
        0x64
    }
    m = "startForResult"
.end annotation


# instance fields
.field public h:Landroidx/fragment/app/p;

.field public i:Landroid/content/Intent;

.field public j:Lrd/w;

.field public synthetic k:Ljava/lang/Object;

.field public l:I


# direct methods
.method public constructor <init>(Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lzb/c$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lzb/c$a;->k:Ljava/lang/Object;

    iget p1, p0, Lzb/c$a;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lzb/c$a;->l:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lzb/c;->b(Landroidx/fragment/app/p;Landroid/content/Intent;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

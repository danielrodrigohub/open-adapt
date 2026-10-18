.class public final Lzb/c$b;
.super Ljava/lang/Object;
.source "OIDCAuthBrowser.kt"

# interfaces
.implements Landroidx/activity/result/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzb/c;->b(Landroidx/fragment/app/p;Landroid/content/Intent;Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/activity/result/b;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljd/d<",
            "Landroidx/activity/result/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Landroidx/activity/result/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lzb/c$b;->a:Ljd/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/activity/result/a;

    .line 2
    iget-object v0, p0, Lzb/c$b;->a:Ljd/d;

    invoke-interface {v0, p1}, Ljd/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

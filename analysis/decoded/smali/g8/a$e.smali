.class public final Lg8/a$e;
.super Ljava/lang/Object;
.source "OAuthModule.kt"

# interfaces
.implements Led/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg8/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AppAuth"

    if-eqz p2, :cond_0

    .line 1
    sget-object v1, Lo7/x;->a:Lo7/x;

    invoke-virtual {v1, v0, p1, p2}, Lo7/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object p2, Lo7/x;->a:Lo7/x;

    invoke-virtual {p2, v0, p1}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final b(Landroid/support/v4/media/a;)V
    .locals 0

    return-void
.end method

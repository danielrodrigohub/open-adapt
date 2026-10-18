.class public final Lg8/a$d;
.super Ljava/lang/Object;
.source "OAuthModule.kt"

# interfaces
.implements Lob/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg8/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "nikeadapt://oidc/authorize_code/v1"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(this)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object v0, p0, Lg8/a$d;->a:Landroid/net/Uri;

    const-string v2, "openid"

    const-string v3, "profile"

    const-string v4, "email"

    const-string v5, "phone"

    const-string v6, "flow"

    const-string v7, "offline_access"

    const-string v8, "nike.digital"

    .line 4
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg8/a$d;->b:Ljava/util/List;

    const-string v0, "https://accounts.nike.com/.well-known/openid-configuration"

    .line 6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "https://accounts.nike.com/"

    .line 7
    iput-object v0, p0, Lg8/a$d;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lg8/a$d;->d:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lg8/a$d;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lg8/a$d;->d:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg8/a$d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg8/a$d;->b:Ljava/util/List;

    return-object v0
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.class public final Lec/a;
.super Ljava/lang/Object;
.source "TelemetryExt.kt"


# static fields
.field public static final a:Lec/a;

.field public static final b:Led/d;

.field public static final c:Led/d;

.field public static final d:Led/d;

.field public static final e:Led/d;

.field public static final f:Led/d;

.field public static final g:Led/d;

.field public static final h:Led/d;

.field public static final i:Led/d;

.field public static final j:Led/d;

.field public static final k:Led/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lec/a;

    invoke-direct {v0}, Lec/a;-><init>()V

    sput-object v0, Lec/a;->a:Lec/a;

    .line 1
    new-instance v0, Led/d;

    const-string v1, "authentication"

    invoke-direct {v0, v1}, Led/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lec/a;->b:Led/d;

    .line 2
    new-instance v0, Led/d;

    const-string v1, "oidc"

    invoke-direct {v0, v1}, Led/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lec/a;->c:Led/d;

    .line 3
    new-instance v0, Led/d;

    const-string v1, "cancel"

    invoke-direct {v0, v1}, Led/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lec/a;->d:Led/d;

    .line 4
    new-instance v0, Led/d;

    const-string v1, "credential"

    invoke-direct {v0, v1}, Led/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lec/a;->e:Led/d;

    .line 5
    new-instance v0, Led/d;

    const-string v1, "error"

    invoke-direct {v0, v1}, Led/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lec/a;->f:Led/d;

    .line 6
    new-instance v0, Led/d;

    const-string v1, "revokerefresh"

    invoke-direct {v0, v1}, Led/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lec/a;->g:Led/d;

    .line 7
    new-instance v0, Led/d;

    const-string v1, "signin"

    invoke-direct {v0, v1}, Led/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lec/a;->h:Led/d;

    .line 8
    new-instance v0, Led/d;

    const-string v1, "signout"

    invoke-direct {v0, v1}, Led/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lec/a;->i:Led/d;

    .line 9
    new-instance v0, Led/d;

    const-string v1, "tokenrefresh"

    invoke-direct {v0, v1}, Led/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lec/a;->j:Led/d;

    const-string v0, "^[a-z]+$"

    .line 10
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "compile(pattern)"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "userstate"

    .line 11
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v3, "Tag values must be all lowercase ascii strings"

    if-eqz v1, :cond_1

    .line 12
    new-instance v1, Led/d;

    const-string v4, "stack"

    invoke-direct {v1, v4}, Led/d;-><init>(Ljava/lang/String;)V

    sput-object v1, Lec/a;->k:Led/d;

    const-string v1, "reauthenticate"

    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Led/d;",
            ">;)",
            "Ljava/util/List<",
            "Led/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Led/d;

    .line 1
    sget-object v1, Lec/a;->b:Led/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    sget-object v1, Lec/a;->c:Led/d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Landroidx/lifecycle/o;->C([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0
.end method

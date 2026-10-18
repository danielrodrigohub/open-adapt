.class public final Li2/k;
.super Ljava/lang/Object;
.source "DropShadowEffectParser.java"


# static fields
.field public static final f:Lj2/c$a;

.field public static final g:Lj2/c$a;


# instance fields
.field public a:Le2/a;

.field public b:Le2/b;

.field public c:Le2/b;

.field public d:Le2/b;

.field public e:Le2/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ef"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj2/c$a;->a([Ljava/lang/String;)Lj2/c$a;

    move-result-object v0

    sput-object v0, Li2/k;->f:Lj2/c$a;

    const-string v0, "nm"

    const-string v1, "v"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj2/c$a;->a([Ljava/lang/String;)Lj2/c$a;

    move-result-object v0

    sput-object v0, Li2/k;->g:Lj2/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

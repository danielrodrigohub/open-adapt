.class public final Li2/b;
.super Ljava/lang/Object;
.source "AnimatableTextPropertiesParser.java"


# static fields
.field public static final a:Lj2/c$a;

.field public static final b:Lj2/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "a"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj2/c$a;->a([Ljava/lang/String;)Lj2/c$a;

    move-result-object v0

    sput-object v0, Li2/b;->a:Lj2/c$a;

    const-string v0, "fc"

    const-string v1, "sc"

    const-string v2, "sw"

    const-string v3, "t"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj2/c$a;->a([Ljava/lang/String;)Lj2/c$a;

    move-result-object v0

    sput-object v0, Li2/b;->b:Lj2/c$a;

    return-void
.end method

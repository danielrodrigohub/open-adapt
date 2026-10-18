.class public final Li2/j0;
.super Ljava/lang/Object;
.source "ShapeStrokeParser.java"


# static fields
.field public static final a:Lj2/c$a;

.field public static final b:Lj2/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "nm"

    const-string v1, "c"

    const-string v2, "w"

    const-string v3, "o"

    const-string v4, "lc"

    const-string v5, "lj"

    const-string v6, "ml"

    const-string v7, "hd"

    const-string v8, "d"

    .line 1
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj2/c$a;->a([Ljava/lang/String;)Lj2/c$a;

    move-result-object v0

    sput-object v0, Li2/j0;->a:Lj2/c$a;

    const-string v0, "n"

    const-string v1, "v"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj2/c$a;->a([Ljava/lang/String;)Lj2/c$a;

    move-result-object v0

    sput-object v0, Li2/j0;->b:Lj2/c$a;

    return-void
.end method

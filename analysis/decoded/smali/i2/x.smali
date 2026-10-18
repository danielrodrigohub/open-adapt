.class public final Li2/x;
.super Ljava/lang/Object;
.source "MergePathsParser.java"


# static fields
.field public static final a:Lj2/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "nm"

    const-string v1, "mm"

    const-string v2, "hd"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj2/c$a;->a([Ljava/lang/String;)Lj2/c$a;

    move-result-object v0

    sput-object v0, Li2/x;->a:Lj2/c$a;

    return-void
.end method

.class public final Ll5/z;
.super Ll5/x;
.source "HttpDataSource.java"


# instance fields
.field public final k:I

.field public final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/io/IOException;Ljava/util/Map;Ll5/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/io/IOException;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ll5/m;",
            "[B)V"
        }
    .end annotation

    const-string p4, "Response code: "

    .line 1
    invoke-static {p4, p1}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    const/16 v0, 0x7d4

    .line 2
    invoke-direct {p0, p4, p2, v0}, Ll5/x;-><init>(Ljava/lang/String;Ljava/io/IOException;I)V

    .line 3
    iput p1, p0, Ll5/z;->k:I

    .line 4
    iput-object p3, p0, Ll5/z;->l:Ljava/util/Map;

    return-void
.end method

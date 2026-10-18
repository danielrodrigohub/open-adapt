.class public final Lq2/c;
.super Ljava/lang/Object;
.source "ThumbnailStreamOpener.java"


# static fields
.field public static final e:Landroidx/lifecycle/o;


# instance fields
.field public final a:Lq2/b;

.field public final b:Ls2/b;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    sput-object v0, Lq2/c;->e:Landroidx/lifecycle/o;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lq2/b;Ls2/b;Landroid/content/ContentResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lq2/b;",
            "Ls2/b;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lq2/c;->a:Lq2/b;

    .line 3
    iput-object p3, p0, Lq2/c;->b:Ls2/b;

    .line 4
    iput-object p4, p0, Lq2/c;->c:Landroid/content/ContentResolver;

    .line 5
    iput-object p1, p0, Lq2/c;->d:Ljava/util/List;

    return-void
.end method

package de;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.FileSystemException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileTime;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: compiled from: NioSystemFileSystem.kt */
/* JADX INFO: loaded from: classes2.dex */
@IgnoreJRERequirement
public final class v extends u {
    @Override // de.u, de.k
    public final void atomicMove(a0 a0Var, a0 a0Var2) throws IOException {
        p4.h.j(a0Var, "source");
        p4.h.j(a0Var2, "target");
        try {
            Files.move(a0Var.l(), a0Var2.l(), StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
        } catch (UnsupportedOperationException unused) {
            throw new IOException("atomic move not supported");
        } catch (NoSuchFileException e10) {
            throw new FileNotFoundException(e10.getMessage());
        }
    }

    @Override // de.u, de.k
    public final void createSymlink(a0 a0Var, a0 a0Var2) throws IOException {
        p4.h.j(a0Var, "source");
        p4.h.j(a0Var2, "target");
        Files.createSymbolicLink(a0Var.l(), a0Var2.l(), new FileAttribute[0]);
    }

    public final Long d(FileTime fileTime) {
        Long lValueOf = Long.valueOf(fileTime.toMillis());
        if (lValueOf.longValue() != 0) {
            return lValueOf;
        }
        return null;
    }

    @Override // de.u, de.k
    public final j metadataOrNull(a0 a0Var) {
        p4.h.j(a0Var, "path");
        Path pathL = a0Var.l();
        try {
            BasicFileAttributes attributes = Files.readAttributes(pathL, (Class<BasicFileAttributes>) BasicFileAttributes.class, LinkOption.NOFOLLOW_LINKS);
            Path symbolicLink = attributes.isSymbolicLink() ? Files.readSymbolicLink(pathL) : null;
            boolean zIsRegularFile = attributes.isRegularFile();
            boolean zIsDirectory = attributes.isDirectory();
            a0 a0VarA = symbolicLink != null ? a0.f6189i.a(symbolicLink.toString(), false) : null;
            Long lValueOf = Long.valueOf(attributes.size());
            FileTime fileTimeCreationTime = attributes.creationTime();
            Long lD = fileTimeCreationTime != null ? d(fileTimeCreationTime) : null;
            FileTime fileTimeLastModifiedTime = attributes.lastModifiedTime();
            Long lD2 = fileTimeLastModifiedTime != null ? d(fileTimeLastModifiedTime) : null;
            FileTime fileTimeLastAccessTime = attributes.lastAccessTime();
            return new j(zIsRegularFile, zIsDirectory, a0VarA, lValueOf, lD, lD2, fileTimeLastAccessTime != null ? d(fileTimeLastAccessTime) : null);
        } catch (NoSuchFileException | FileSystemException unused) {
            return null;
        }
    }

    @Override // de.u
    public final String toString() {
        return "NioSystemFileSystem";
    }
}
